; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bda2str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bda2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64)* @bda2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bda2str(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 18
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  store i8* null, i8** %4, align 8
  br label %41

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %18, %17
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
