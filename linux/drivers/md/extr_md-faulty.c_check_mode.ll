; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_check_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_check_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faulty_conf = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faulty_conf*, i32)* @check_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mode(%struct.faulty_conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.faulty_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.faulty_conf* %0, %struct.faulty_conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %7 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %16 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %59

24:                                               ; preds = %14, %2
  %25 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %26 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @atomic_dec_and_test(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %24
  %34 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %35 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %44 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %50 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @atomic_set(i32* %48, i64 %55)
  br label %57

57:                                               ; preds = %42, %33
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
