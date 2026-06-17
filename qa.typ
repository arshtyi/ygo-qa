#import "@preview/octique:0.1.1": octique-inline
#import "@preview/numbly:0.1.0": *
#let linkto(url, icon: "link") = link(url, box(move(dy: -.15em, octique-inline(icon))))
#set page(paper: "a4")
#set text(lang: "zh", region: "cn", font: ("Noto Serif CJK SC", "Noto Sans CJK SC"))
#let cnl(name) = text(fill: blue.darken(30%), link("https://ygocdb.com/card/name/" + name, name))
#set heading(numbering: numbly(
    "",
    "{2:1}.",
    "{2}.{3:1}.",
))
#show heading.where(level: 1): set align(center)

= 1
== q
2026-6-17：是否可以将两张#cnl("「冰剑龙 幻冰龙」")视为魔法卡放置在自己的魔法·陷阱区域？
== a
=== 最新
#strike[无确切消息。]可以。
=== 规则书
怪兽的记述『「○○」在场上只能有1只/1张表侧表示存在』的这类效果是作为怪兽效果适用的。通过控制权变更这样，让魔法·陷阱卡区域存在2张这类怪兽的场合，都不会破坏。同样的，魔法·陷阱卡的这类记述是作为魔法·陷阱卡的效果适用的。通过#cnl("「魔术礼帽」")+#cnl("「停战协定」")等效果，让怪兽区域存在2张这类作为怪兽的魔法·陷阱卡的场合，也都不会破坏。#linkto("https://ocg-rule.readthedocs.io/zh-cn/latest/c03/%E5%8F%AA%E8%83%BD%E6%9C%89%E2%97%8B%E2%97%8B%E5%AD%98%E5%9C%A8.html#id6")

+ #cnl("「冰剑龙 幻冰龙」")因#cnl("「叛逆之罪宝-蛇眼」")效果当作永续魔法卡在对方魔法·陷阱卡区域存在的场合，我方可以以对方墓地的#cnl("「冰剑龙 幻冰龙」")为对象发动#cnl("「蛇眼炎龙」")的①效果。

#strike[但上述裁定没有相关qa。]邮件内容：#linkto("https://ocg-rule.readthedocs.io/zh-cn/dev/c06/2026.html#id77")，#linkto("https://ocg-rule.readthedocs.io/zh-cn/dev/c06/2023.html#id207")。实卡出示相应内容认可。
=== ygopro
无法实现。ygopro-core#linkto("https://github.com/Fluorohydride/ygopro-core/blob/19026e316c6de1773886a6b742081b5130c1a413/libcard.cpp#L3315")，#strike[但这更多是卡片脚本问题]已知bug。
=== md
效果不处理。
=== 其他
规则书的处理比较符合直觉。这类无种类效果在墓地也是生效的。如果想要实现放置两张，可能的实现包括：
+ 在魔法·陷阱区域已经存在一张当作魔法卡使用的#cnl("「冰剑龙 幻冰龙」")的情况下，无效墓地的#cnl("「冰剑龙 幻冰龙」")并将其特殊召唤（注意不是"将其效果无效特殊召唤"），之后当作魔法卡使用。
+ 无效自己和对方的两张#cnl("「冰剑龙 幻冰龙」")，之后转移控制权实现。

= 2
== q
2026-6-19：场上存在#cnl("「三眼怪」")和#cnl("「吞食圣痕之龙」")，自己额外卡组只存在#cnl("「捕食植物 犀角龙」")，手牌仅存在#cnl("「超融合」")和#cnl("「教导的圣女 艾克莉西娅」")，不存在其他卡片的情况下，能否通过丢弃手牌的#cnl("「教导的圣女 艾克莉西娅」")发动手牌的#cnl("「超融合」")以场上的#cnl("「三眼怪」")和#cnl("「吞食圣痕之龙」")为融合素材将额外卡组的#cnl("「捕食植物 犀角龙」")融合召唤？
== a
=== 最新
不知道。
=== 其他
能或者不能都可以说通，取决于Konami的想法。但Konami目前的想法是"我不知道，执裁裁判看着办"。
