; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_bindconnect/extr_unix_bindconnect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"/tmp/unix_bind.XXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mkdtemp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @PATH_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = call i32 @strlcpy(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32* @mkdtemp(i8* %8)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @err(i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 @push_path(i8* %8)
  %17 = call i32 @bind_test(i8* %8)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @connect_test(i8* %8)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = call i32 (...) @unwind()
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %1, align 4
  %25 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %25)
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @push_path(i8*) #2

declare dso_local i32 @bind_test(i8*) #2

declare dso_local i32 @connect_test(i8*) #2

declare dso_local i32 @unwind(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
