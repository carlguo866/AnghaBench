; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_test_mprotect_with_pkey_0.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_test_mprotect_with_pkey_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@pkey_last_malloc_record = common dso_local global %struct.TYPE_3__* null, align 8
@HPAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mprotect_with_pkey_0(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pkey_last_malloc_record, align 8
  %8 = call i32 @assert(%struct.TYPE_3__* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pkey_last_malloc_record, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @HPAGE_SIZE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @HPAGE_SIZE, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pkey_last_malloc_record, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mprotect_pkey(i32* %21, i64 %22, i32 %23, i32 0)
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mprotect_pkey(i32* %25, i64 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_3__*) #1

declare dso_local i32 @mprotect_pkey(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
