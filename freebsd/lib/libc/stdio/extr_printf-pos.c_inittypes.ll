; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_inittypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_inittypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typetable = type { i64, i32, i32*, i64, i32* }

@STATIC_ARG_TBL_SIZE = common dso_local global i64 0, align 8
@T_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typetable*)* @inittypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inittypes(%struct.typetable* %0) #0 {
  %2 = alloca %struct.typetable*, align 8
  %3 = alloca i64, align 8
  store %struct.typetable* %0, %struct.typetable** %2, align 8
  %4 = load %struct.typetable*, %struct.typetable** %2, align 8
  %5 = getelementptr inbounds %struct.typetable, %struct.typetable* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.typetable*, %struct.typetable** %2, align 8
  %8 = getelementptr inbounds %struct.typetable, %struct.typetable* %7, i32 0, i32 2
  store i32* %6, i32** %8, align 8
  %9 = load i64, i64* @STATIC_ARG_TBL_SIZE, align 8
  %10 = load %struct.typetable*, %struct.typetable** %2, align 8
  %11 = getelementptr inbounds %struct.typetable, %struct.typetable* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.typetable*, %struct.typetable** %2, align 8
  %13 = getelementptr inbounds %struct.typetable, %struct.typetable* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.typetable*, %struct.typetable** %2, align 8
  %15 = getelementptr inbounds %struct.typetable, %struct.typetable* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %27, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @STATIC_ARG_TBL_SIZE, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* @T_UNUSED, align 4
  %22 = load %struct.typetable*, %struct.typetable** %2, align 8
  %23 = getelementptr inbounds %struct.typetable, %struct.typetable* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %16

30:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
