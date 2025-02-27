; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32* }

@M_NG_SSCFU = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@sscfu_funcs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_sscfu_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscfu_constructor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_NG_SSCFU, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.priv* @malloc(i32 8, i32 %5, i32 %8)
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @sscfu_create(i32 %10, i32* @sscfu_funcs)
  %12 = load %struct.priv*, %struct.priv** %4, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = load i32, i32* @M_NG_SSCFU, align 4
  %18 = call i32 @free(%struct.priv* %16, i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = call i32 @NG_NODE_SET_PRIVATE(i32 %21, %struct.priv* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.priv* @malloc(i32, i32, i32) #1

declare dso_local i32* @sscfu_create(i32, i32*) #1

declare dso_local i32 @free(%struct.priv*, i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
