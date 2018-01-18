let mediator = Mediator()

let w1 = Warrior("Gidon", mediator)
let w2 = Warrior("Tzahi", mediator)
let w3 = Warrior("Idan", mediator)
let w4 = Warrior("Matan", mediator)
let w5 = Warrior("Netanel", mediator)
let w6 = Warrior("Zohar", mediator)

w4.set(ability: IONCannon.instance)
w5.send(msg: "what your status?")
w1.set(ability: Shooting())

w6.callTeamAttack()
