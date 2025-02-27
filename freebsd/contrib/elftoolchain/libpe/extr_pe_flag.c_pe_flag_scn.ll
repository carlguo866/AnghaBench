; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_flag.c_pe_flag_scn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_pe_flag.c_pe_flag_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PE_C_SET = common dso_local global i64 0, align 8
@PE_C_CLR = common dso_local global i64 0, align 8
@PE_F_DIRTY = common dso_local global i32 0, align 4
@PE_F_STRIP_SECTION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_flag_scn(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PE_C_SET, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PE_C_CLR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PE_F_DIRTY, align 4
  %21 = load i32, i32* @PE_F_STRIP_SECTION, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %14, %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @PE_C_SET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %32
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
