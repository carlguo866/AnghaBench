; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_start_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_start_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i64, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.rchan_buf*)* @relay_file_read_start_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @relay_file_read_start_pos(i64 %0, %struct.rchan_buf* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.rchan_buf* %1, %struct.rchan_buf** %4, align 8
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %18 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %23 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = urem i64 %24, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = mul i64 %30, %31
  %33 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %34 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = udiv i64 %38, %39
  store i64 %40, i64* %5, align 8
  %41 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %42 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %9, align 8
  %50 = mul i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  %55 = load i64, i64* %9, align 8
  %56 = mul i64 %54, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %37
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  %67 = load i64, i64* %10, align 8
  %68 = urem i64 %66, %67
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = mul i64 %69, %70
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %64, %60, %37
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
