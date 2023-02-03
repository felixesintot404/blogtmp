---
title: test
tags:
---
# tag plugin note flat
{% note flat danger %}
danger
{% endnote %}
{% note flat warning %}
warning
{% endnote %}
{% note flat info %}
info
{% endnote %}
# mermaid graph
```
sequenceDiagram
  title: 实例
  participant teacher as 老师
  participant stu as 学生

  opt 起床了
    Note right of stu:上学
    Note left of teacher:上课
  end
  stu->>teacher:老师好
  teacher->>stu:同学们好,请坐
  opt 老师应答完毕
    Note over stu:坐下
  end
  loop 授课时间
    Note right of teacher:老师上课
    alt 同学提问
      stu->>teacher:问题
      teacher->>stu:答案
    else 老师提问
      teacher->>stu:问题
      stu->>teacher:回答
    else 下课时间到了
      Note right of teacher:下课
    end
  end
  opt 下课
    teacher->>stu:同学们再见
    stu->>teacher:老师再见
  end
  Note over teacher,stu:继续日常至放学时间

  opt 放学了
    Note left of teacher:回家
    Note right of stu:回家
  end
```
{% mermaid %}
sequenceDiagram
  title: 实例
  participant teacher as 老师
  participant stu as 学生

  opt 起床了
    Note right of stu:上学
    Note left of teacher:上课
  end
  stu->>teacher:老师好
  teacher->>stu:同学们好,请坐
  opt 老师应答完毕
    Note over stu:坐下
  end
  loop 授课时间
    Note right of teacher:老师上课
    alt 同学提问
      stu->>teacher:问题
      teacher->>stu:答案
    else 老师提问
      teacher->>stu:问题
      stu->>teacher:回答
    else 下课时间到了
      Note right of teacher:下课
    end
  end
  opt 下课
    teacher->>stu:同学们再见
    stu->>teacher:老师再见
  end
  Note over teacher,stu:继续日常至放学时间

  opt 放学了
    Note left of teacher:回家
    Note right of stu:回家
  end
{% endmermaid %}
```
C4Context
title System Context diagram for Internet Banking System

Person(customerA, "Banking Customer A", "A customer of the bank, with personal bank accounts.")
Person(customerB, "Banking Customer B")
Person_Ext(customerC, "Banking Customer C")
System(SystemAA, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

Person(customerD, "Banking Customer D", "A customer of the bank, <br/> with personal bank accounts.")

Enterprise_Boundary(b1, "BankBoundary") {

  SystemDb_Ext(SystemE, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

  System_Boundary(b2, "BankBoundary2") {
    System(SystemA, "Banking System A")
    System(SystemB, "Banking System B", "A system of the bank, with personal bank accounts.")
  }

  System_Ext(SystemC, "E-mail system", "The internal Microsoft Exchange e-mail system.")
  SystemDb(SystemD, "Banking System D Database", "A system of the bank, with personal bank accounts.")

  Boundary(b3, "BankBoundary3", "boundary") {
    SystemQueue(SystemF, "Banking System F Queue", "A system of the bank, with personal bank accounts.")
    SystemQueue_Ext(SystemG, "Banking System G Queue", "A system of the bank, with personal bank accounts.")
  }
}

BiRel(customerA, SystemAA, "Uses")
BiRel(SystemAA, SystemE, "Uses")
Rel(SystemAA, SystemC, "Sends e-mails", "SMTP")
Rel(SystemC, customerA, "Sends e-mails to")
```
{% mermaid %}
C4Context
title System Context diagram for Internet Banking System

Person(customerA, "Banking Customer A", "A customer of the bank, with personal bank accounts.")
Person(customerB, "Banking Customer B")
Person_Ext(customerC, "Banking Customer C")
System(SystemAA, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

Person(customerD, "Banking Customer D", "A customer of the bank, <br/> with personal bank accounts.")

Enterprise_Boundary(b1, "BankBoundary") {

  SystemDb_Ext(SystemE, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

  System_Boundary(b2, "BankBoundary2") {
    System(SystemA, "Banking System A")
    System(SystemB, "Banking System B", "A system of the bank, with personal bank accounts.")
  }

  System_Ext(SystemC, "E-mail system", "The internal Microsoft Exchange e-mail system.")
  SystemDb(SystemD, "Banking System D Database", "A system of the bank, with personal bank accounts.")

  Boundary(b3, "BankBoundary3", "boundary") {
    SystemQueue(SystemF, "Banking System F Queue", "A system of the bank, with personal bank accounts.")
    SystemQueue_Ext(SystemG, "Banking System G Queue", "A system of the bank, with personal bank accounts.")
  }
}

BiRel(customerA, SystemAA, "Uses")
BiRel(SystemAA, SystemE, "Uses")
Rel(SystemAA, SystemC, "Sends e-mails", "SMTP")
Rel(SystemC, customerA, "Sends e-mails to")
{% endmermaid %}