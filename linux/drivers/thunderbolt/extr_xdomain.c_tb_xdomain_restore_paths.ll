; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_restore_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_restore_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"re-establishing DMA path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_xdomain*)* @tb_xdomain_restore_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_xdomain_restore_paths(%struct.tb_xdomain* %0) #0 {
  %2 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %2, align 8
  %3 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %4 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %10 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %12 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %17 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %16, i32 0, i32 2
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %20 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %23 = call i32 @tb_domain_approve_xdomain_paths(i32 %21, %struct.tb_xdomain* %22)
  br label %24

24:                                               ; preds = %7, %15, %8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @tb_domain_approve_xdomain_paths(i32, %struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
