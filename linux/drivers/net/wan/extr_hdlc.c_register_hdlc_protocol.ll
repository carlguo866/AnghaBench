; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_register_hdlc_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_register_hdlc_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlc_proto = type { %struct.hdlc_proto* }

@first_proto = common dso_local global %struct.hdlc_proto* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_hdlc_protocol(%struct.hdlc_proto* %0) #0 {
  %2 = alloca %struct.hdlc_proto*, align 8
  store %struct.hdlc_proto* %0, %struct.hdlc_proto** %2, align 8
  %3 = call i32 (...) @rtnl_lock()
  %4 = load %struct.hdlc_proto*, %struct.hdlc_proto** @first_proto, align 8
  %5 = load %struct.hdlc_proto*, %struct.hdlc_proto** %2, align 8
  %6 = getelementptr inbounds %struct.hdlc_proto, %struct.hdlc_proto* %5, i32 0, i32 0
  store %struct.hdlc_proto* %4, %struct.hdlc_proto** %6, align 8
  %7 = load %struct.hdlc_proto*, %struct.hdlc_proto** %2, align 8
  store %struct.hdlc_proto* %7, %struct.hdlc_proto** @first_proto, align 8
  %8 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
