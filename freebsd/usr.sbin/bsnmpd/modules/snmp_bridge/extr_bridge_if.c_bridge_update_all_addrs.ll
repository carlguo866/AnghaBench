; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_update_all_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_update_all_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32 }
%struct.bridge_if = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bridge_update_all_addrs() #0 {
  %1 = alloca %struct.mibif*, align 8
  %2 = alloca %struct.bridge_if*, align 8
  %3 = alloca %struct.bridge_if*, align 8
  %4 = call %struct.bridge_if* (...) @bridge_first_bif()
  store %struct.bridge_if* %4, %struct.bridge_if** %2, align 8
  br label %5

5:                                                ; preds = %41, %0
  %6 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %7 = icmp ne %struct.bridge_if* %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  %9 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %10 = call %struct.bridge_if* @bridge_next_bif(%struct.bridge_if* %9)
  store %struct.bridge_if* %10, %struct.bridge_if** %3, align 8
  %11 = call %struct.mibif* (...) @mib_first_if()
  store %struct.mibif* %11, %struct.mibif** %1, align 8
  br label %12

12:                                               ; preds = %26, %8
  %13 = load %struct.mibif*, %struct.mibif** %1, align 8
  %14 = icmp ne %struct.mibif* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.mibif*, %struct.mibif** %1, align 8
  %17 = getelementptr inbounds %struct.mibif, %struct.mibif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %20 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.mibif*, %struct.mibif** %1, align 8
  %28 = call %struct.mibif* @mib_next_if(%struct.mibif* %27)
  store %struct.mibif* %28, %struct.mibif** %1, align 8
  br label %12

29:                                               ; preds = %24, %12
  %30 = load %struct.mibif*, %struct.mibif** %1, align 8
  %31 = icmp ne %struct.mibif* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %34 = call i32 @bridge_update_addrs(%struct.bridge_if* %33)
  %35 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %36 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.bridge_if*, %struct.bridge_if** %2, align 8
  %39 = call i32 @bridge_remove_bif(%struct.bridge_if* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.bridge_if*, %struct.bridge_if** %3, align 8
  store %struct.bridge_if* %42, %struct.bridge_if** %2, align 8
  br label %5

43:                                               ; preds = %5
  %44 = call i32 (...) @bridge_addrs_update_listage()
  ret void
}

declare dso_local %struct.bridge_if* @bridge_first_bif(...) #1

declare dso_local %struct.bridge_if* @bridge_next_bif(%struct.bridge_if*) #1

declare dso_local %struct.mibif* @mib_first_if(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.mibif* @mib_next_if(%struct.mibif*) #1

declare dso_local i32 @bridge_update_addrs(%struct.bridge_if*) #1

declare dso_local i32 @bridge_remove_bif(%struct.bridge_if*) #1

declare dso_local i32 @bridge_addrs_update_listage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
