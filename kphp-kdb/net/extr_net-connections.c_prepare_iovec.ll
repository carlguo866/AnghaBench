; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_prepare_iovec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_prepare_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_iovec(%struct.iovec* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @nbit_set(i32* %11, i32* %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %46, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = call i32 @nbit_ready_bytes(i32* %11)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %49

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.iovec*, %struct.iovec** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i64 %28
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = call i32 @nbit_get_ptr(i32* %11)
  %32 = load %struct.iovec*, %struct.iovec** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i64 %34
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @nbit_advance(i32* %11, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %15

49:                                               ; preds = %23, %15
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_ready_bytes(i32*) #1

declare dso_local i32 @nbit_get_ptr(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_advance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
