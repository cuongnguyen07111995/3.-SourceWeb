class ThanhviensController < ApplicationController
    def new
        flash.clear
        @thanhvien = Thanhvien.new
    end
    
    def edit
    end
    def create
        @thanhvien = Thanhvien.new(thanhvien_params)
        if params[:thanhvien][:password] == params[:thanhvien][:confirm_password]
            if Thanhvien.find_by(email: @thanhvien.email).nil?
                if Thanhvien.find_by(sdt: @thanhvien.sdt).nil?
                    if @thanhvien.save
                        flash[:success] = 'Đăng ký thành công!'
                        log_in @thanhvien
                        redirect_to @thanhvien
                    else
                        render 'new'
                    end
                else
                    flash[:danger] = 'Số điện thoạt đã đăng ký!'
                    render 'new'
                end
            else
                flash[:danger] = 'Email đã đăng ký!'
                render 'new'
            end
        else
            flash[:danger] = 'Mật khẩu xác nhận không khớp!'
            render 'new'
        end
    end

    def show
        redirect_to root_url
        #@thanhvien = Thanhvien.find(params[:id])
        #@monans = @thanhvien.monans
    end

    def update
        @thanhvien = current_user

        if @thanhvien.update(user_params)
            redirect_to @thanhvien
        else
            render 'edit'
        end
    end

    def destroy
        current_user.destroy
        log_out

        redirect_to root_url
    end

    def thanhvien_params
         params.require(:thanhvien).permit(:hoten, :password, :email, :sdt)
    end
end
