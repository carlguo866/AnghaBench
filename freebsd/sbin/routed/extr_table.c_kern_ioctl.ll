; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.khash = type { i32, i32, i32, i32, i32 }

@KS_DYNAMIC = common dso_local global i32 0, align 4
@KS_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.khash*, i32, i32)* @kern_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kern_ioctl(%struct.khash* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.khash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.khash* %0, %struct.khash** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %50 [
    i32 128, label %8
    i32 130, label %28
    i32 129, label %35
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @KS_DYNAMIC, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.khash*, %struct.khash** %4, align 8
  %12 = getelementptr inbounds %struct.khash, %struct.khash* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.khash*, %struct.khash** %4, align 8
  %16 = getelementptr inbounds %struct.khash, %struct.khash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KS_DELETED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  br label %66

22:                                               ; preds = %8
  %23 = load i32, i32* @KS_DELETED, align 4
  %24 = load %struct.khash*, %struct.khash** %4, align 8
  %25 = getelementptr inbounds %struct.khash, %struct.khash* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %50

28:                                               ; preds = %3
  %29 = load i32, i32* @KS_DELETED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.khash*, %struct.khash** %4, align 8
  %32 = getelementptr inbounds %struct.khash, %struct.khash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.khash*, %struct.khash** %4, align 8
  %37 = getelementptr inbounds %struct.khash, %struct.khash* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KS_DELETED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  store i32 130, i32* %5, align 4
  %43 = load i32, i32* @KS_DELETED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.khash*, %struct.khash** %4, align 8
  %46 = getelementptr inbounds %struct.khash, %struct.khash* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %3, %49, %28, %22
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.khash*, %struct.khash** %4, align 8
  %53 = getelementptr inbounds %struct.khash, %struct.khash* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.khash*, %struct.khash** %4, align 8
  %56 = getelementptr inbounds %struct.khash, %struct.khash* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.khash*, %struct.khash** %4, align 8
  %59 = getelementptr inbounds %struct.khash, %struct.khash* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.khash*, %struct.khash** %4, align 8
  %62 = getelementptr inbounds %struct.khash, %struct.khash* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @rtioctl(i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %50, %21
  ret void
}

declare dso_local i32 @rtioctl(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
