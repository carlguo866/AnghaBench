; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_cmd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_cmd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.cmd* }

@cmds = common dso_local global %struct.cmd* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_register(%struct.cmd* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  store %struct.cmd* %0, %struct.cmd** %2, align 8
  %3 = load %struct.cmd*, %struct.cmd** @cmds, align 8
  %4 = load %struct.cmd*, %struct.cmd** %2, align 8
  %5 = getelementptr inbounds %struct.cmd, %struct.cmd* %4, i32 0, i32 0
  store %struct.cmd* %3, %struct.cmd** %5, align 8
  %6 = load %struct.cmd*, %struct.cmd** %2, align 8
  store %struct.cmd* %6, %struct.cmd** @cmds, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
