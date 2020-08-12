class LoginScreen
# 921 585 450 97
    def initialize
        @campo_cpf              = "//android.widget.EditText[@index='0']"
        @btn_continuar          = "//*[@text='Continuar']"
        @campo_senha            = "//android.view.ViewGroup[4]/android.widget.EditText"
        @btn_exibir_senha       = "//android.view.ViewGroup[2]/android.view.ViewGroup[4]/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView"
        @btn_entrar             = "//android.view.ViewGroup[5]/android.widget.TextView"
    end

    def preencher_cpf(cpf)
        find_element(xpath: @campo_cpf).send_keys cpf
        find_element(xpath: @btn_continuar ).click
    end

    def preencher_senha(senha)
        find_element(xpath: @campo_senha).send_keys senha
        find_element(xpath: @btn_exibir_senha).click
        find_element(xpath: @btn_entrar).click
    end  

    def confirmacao_mensagem(texto)
        @msg = find_element(xpath: "//*[@text='#{texto}']").displayed?
        expect(@msg).to be truelog
    end

    def acessar_trocar_senha(link)
        find_element(xpath:"//*[@text='#{link}']").click
    end

    def cadastrar_novo_usuario
        find_element(xpath: @campo_cpf).send_keys Faker::CPF.numeric
        find_element(xpath: @btn_continuar).click
    end

end