class HomeController < ApplicationController
  def index
    @title = 'Home#index'
    @description = 'トップページ'
    @contents = get_contents
  end

  private

  def get_contents
    {
      outer_links: [
        {
          name: 'Qiitaページ',
          text: 'Qiiita',
          url: 'https://qiita.com/t0yohei/items/cd11b15642fbb26f71e2'
        },
        {
          name: 'ソースコード',
          text: 'Github',
          url: 'https://github.com/yusuke39'
        }
      ]
    }
  end




end
