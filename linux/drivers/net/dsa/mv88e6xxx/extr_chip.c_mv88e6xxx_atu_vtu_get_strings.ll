; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_atu_vtu_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_atu_vtu_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mv88e6xxx_atu_vtu_stats_strings = common dso_local global i32* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mv88e6xxx_atu_vtu_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_atu_vtu_get_strings(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @mv88e6xxx_atu_vtu_stats_strings, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32*, i32** @mv88e6xxx_atu_vtu_stats_strings, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %22 = call i32 @strlcpy(i32* %15, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
