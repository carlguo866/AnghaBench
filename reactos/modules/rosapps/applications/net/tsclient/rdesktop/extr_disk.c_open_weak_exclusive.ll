; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_open_weak_exclusive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_open_weak_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @open_weak_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_weak_exclusive(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @open(i8* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @O_EXCL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %16
  %24 = load i32, i32* @errno, align 4
  switch i32 %24, label %27 [
    i32 135, label %25
    i32 134, label %25
    i32 133, label %25
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @stat(i8* %28, %struct.stat* %9)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 134, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %40

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @O_EXCL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @open(i8* %33, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %31, %25, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
