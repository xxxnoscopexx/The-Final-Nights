/obj/item/organ/heart/gland/plasma
	true_name = "effluvium sanguine-synonym emitter"
	cooldown_low = 1200
	cooldown_high = 1800
	icon_state = "slime"
	uses = -1
	mind_control_uses = 1
	mind_control_duration = 800

/obj/item/organ/heart/gland/plasma/activate()
	to_chat(owner, "<span class='warning'>You feel bloated.</span>")
	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(to_chat), owner, "<span class='userdanger'>A massive stomachache overcomes you.</span>"), 150)
	addtimer(CALLBACK(src, PROC_REF(vomit_plasma)), 200)

/obj/item/organ/heart/gland/plasma/proc/vomit_plasma()
	if(!owner)
		return
	owner.visible_message("<span class='danger'>[owner] vomits a cloud of plasma!</span>")
	owner.vomit()
