; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_socket.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"iii\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_socket_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_socket_socket(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %5, i64* %6, i64* %7)
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i64 @socket(i32 %12, i32 %14, i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_sys_fail(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @mrb_fixnum_value(i32 %25)
  ret i32 %26
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*, i64*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
