Redmine::Plugin.register :redmine_nomnoml_macro do
    require 'nomnoml_macro_hook'

    name 'Redmine Nomnoml Macro plugin'
    author 'Grzegorz Makarewicz'
    description 'Add nomnoml graphs to your wiki.'
    version '0.0.1'
    url 'https://github.com/m32/redmine_nomnoml_macro'
    author_url 'https://github.com/m32'

    Redmine::WikiFormatting::Macros.register do
        desc "Add nomnoml graphs to your wiki. Example:\n\n" +
            "{{nomnoml\n" +
            "#direction: right\n" +
            "#import: sample-style.nomnoml\n" +
            "\n" +
            "[<frame>frame|[some class]]\n" +
            "[<package>package|[some class]]\n" +
            "[<box>box]\n" +
            "[class|items: Object\[\]] - [<hidden> hidden]\n" +
            "[hidden] - [<label> label]\n" +
            "[hidden] - [instance]\n" +
            "[<abstract> abstract] - [<instance> instance]\n" +
            "[<note> note] -- [<reference> reference]\n" +
            "[<package> package] <- [<frame> frame]\n" +
            "[<database> database] <:- [<start> start]\n" +
            "[<end> end] -/- [<state> state]\n" +
            "[<choice> choice] <-o [<input> input]\n" +
            "[<sender> sender] <-+ [<receiver> receiver]\n" +
            "[<actor> actor] <-> [<usecase> usecase]\n" +
            "}}"
        macro :nomnoml, :parse_args => false do |obj, args, text|
            divid = "nomnoml_" + SecureRandom.urlsafe_base64(8)
            out = ''.html_safe
            out << content_tag(:div, text, id: divid, class: 'nomnoml')
            out << javascript_tag("nomnomlapp($('#" + divid + "'));")
            out
        end
    end
end
