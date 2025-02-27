; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setrandpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setrandpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { i32 }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iplist_setrandpos(%struct.iplist* %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca %struct.iplist*, align 8
  store %struct.iplist* %0, %struct.iplist** %3, align 8
  %4 = call i32 (...) @randinit()
  %5 = load %struct.iplist*, %struct.iplist** %3, align 8
  %6 = call i32 (...) @random()
  %7 = load %struct.iplist*, %struct.iplist** %3, align 8
  %8 = getelementptr inbounds %struct.iplist, %struct.iplist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = srem i32 %6, %9
  %11 = call i32 @iplist_setcurpos(%struct.iplist* %5, i32 %10)
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

declare dso_local i32 @randinit(...) #1

declare dso_local i32 @iplist_setcurpos(%struct.iplist*, i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
