; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_writeval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_writeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @adfs_writeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_writeval(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 4, label %8
    i32 3, label %14
    i32 2, label %20
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = lshr i32 %9, 24
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %11, i8* %13, align 1
  br label %14

14:                                               ; preds = %3, %8
  %15 = load i32, i32* %6, align 4
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %19, align 1
  br label %20

20:                                               ; preds = %3, %14
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %23, i8* %25, align 1
  br label %26

26:                                               ; preds = %3, %20
  %27 = load i32, i32* %6, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  br label %31

31:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
