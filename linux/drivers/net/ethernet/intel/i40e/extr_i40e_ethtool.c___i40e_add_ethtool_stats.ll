; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c___i40e_add_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c___i40e_add_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, %struct.i40e_stats*, i32)* @__i40e_add_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__i40e_add_ethtool_stats(i32** %0, i8* %1, %struct.i40e_stats* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i40e_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.i40e_stats* %2, %struct.i40e_stats** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %15, align 8
  %18 = ptrtoint i32* %16 to i32
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.i40e_stats*, %struct.i40e_stats** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.i40e_stats, %struct.i40e_stats* %20, i64 %22
  %24 = call i32 @i40e_add_one_ethtool_stat(i32 %18, i8* %19, %struct.i40e_stats* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @i40e_add_one_ethtool_stat(i32, i8*, %struct.i40e_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
