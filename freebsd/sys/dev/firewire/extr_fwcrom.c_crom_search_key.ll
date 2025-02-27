; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_search_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_search_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csrreg = type { i64 }
%struct.crom_context = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csrreg* @crom_search_key(%struct.crom_context* %0, i64 %1) #0 {
  %3 = alloca %struct.csrreg*, align 8
  %4 = alloca %struct.crom_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.csrreg*, align 8
  store %struct.crom_context* %0, %struct.crom_context** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %9 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %14 = call %struct.csrreg* @crom_get(%struct.crom_context* %13)
  store %struct.csrreg* %14, %struct.csrreg** %6, align 8
  %15 = load %struct.csrreg*, %struct.csrreg** %6, align 8
  %16 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load %struct.csrreg*, %struct.csrreg** %6, align 8
  store %struct.csrreg* %21, %struct.csrreg** %3, align 8
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %24 = call i32 @crom_next(%struct.crom_context* %23)
  br label %7

25:                                               ; preds = %7
  store %struct.csrreg* null, %struct.csrreg** %3, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.csrreg*, %struct.csrreg** %3, align 8
  ret %struct.csrreg* %27
}

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i32 @crom_next(%struct.crom_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
