; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_add_str_8.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_add_str_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32 }
%struct.clnt_str = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Field too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*, i32*, %struct.clnt_str*)* @add_str_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_str_8(%struct.tac_handle* %0, i32* %1, %struct.clnt_str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tac_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.clnt_str*, align 8
  %8 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.clnt_str* %2, %struct.clnt_str** %7, align 8
  %9 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %10 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %11 = call i32 @add_str_16(%struct.tac_handle* %9, i32* %8, %struct.clnt_str* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ntohs(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %21 = call i32 @generr(%struct.tac_handle* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %19, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @add_str_16(%struct.tac_handle*, i32*, %struct.clnt_str*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @generr(%struct.tac_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
