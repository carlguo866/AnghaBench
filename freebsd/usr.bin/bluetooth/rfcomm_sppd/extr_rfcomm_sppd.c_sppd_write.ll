; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sppd.c_sppd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sppd.c_sppd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @sppd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sppd_write(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @write(i32 %14, i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %26 [
    i32 -1, label %19
    i32 0, label %25
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* @errno, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %40

24:                                               ; preds = %19
  br label %37

25:                                               ; preds = %13
  br label %37

26:                                               ; preds = %13
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %26, %25, %24
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
