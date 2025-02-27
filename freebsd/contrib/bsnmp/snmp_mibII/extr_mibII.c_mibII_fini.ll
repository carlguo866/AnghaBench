; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibII_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibII_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mibII_poll_timer = common dso_local global i32* null, align 8
@route_fd = common dso_local global i32* null, align 8
@route = common dso_local global i32 0, align 4
@mib_netsock = common dso_local global i32 0, align 4
@ipForward_reg = common dso_local global i32 0, align 4
@udpmib_reg = common dso_local global i32 0, align 4
@tcpmib_reg = common dso_local global i32 0, align 4
@ipmib_reg = common dso_local global i32 0, align 4
@ifmib_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mibII_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mibII_fini() #0 {
  %1 = load i32*, i32** @mibII_poll_timer, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @mibII_poll_timer, align 8
  %5 = call i32 @timer_stop(i32* %4)
  store i32* null, i32** @mibII_poll_timer, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @route_fd, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @route_fd, align 8
  %11 = call i32 @fd_deselect(i32* %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @route, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @route, align 4
  %17 = call i32 @close(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @mib_netsock, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @mib_netsock, align 4
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ipForward_reg, align 4
  %26 = call i32 @or_unregister(i32 %25)
  %27 = load i32, i32* @udpmib_reg, align 4
  %28 = call i32 @or_unregister(i32 %27)
  %29 = load i32, i32* @tcpmib_reg, align 4
  %30 = call i32 @or_unregister(i32 %29)
  %31 = load i32, i32* @ipmib_reg, align 4
  %32 = call i32 @or_unregister(i32 %31)
  %33 = load i32, i32* @ifmib_reg, align 4
  %34 = call i32 @or_unregister(i32 %33)
  ret i32 0
}

declare dso_local i32 @timer_stop(i32*) #1

declare dso_local i32 @fd_deselect(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @or_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
