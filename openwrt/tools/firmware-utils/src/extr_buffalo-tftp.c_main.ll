; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-tftp.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-tftp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"di:o:h\00", align 1
@do_decrypt = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ifname = common dso_local global i8* null, align 8
@ofname = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @basename(i8* %12)
  store i32 %13, i32* @progname, align 4
  br label %14

14:                                               ; preds = %2, %34
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %35

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %31 [
    i32 100, label %23
    i32 105, label %24
    i32 111, label %26
    i32 104, label %28
  ]

23:                                               ; preds = %21
  store i32 1, i32* @do_decrypt, align 4
  br label %34

24:                                               ; preds = %21
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @ifname, align 8
  br label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @ofname, align 8
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @EXIT_SUCCESS, align 4
  %30 = call i32 @usage(i32 %29)
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @usage(i32 %32)
  br label %34

34:                                               ; preds = %31, %28, %26, %24, %23
  br label %14

35:                                               ; preds = %20
  %36 = call i32 (...) @check_params()
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %47

40:                                               ; preds = %35
  %41 = call i32 (...) @crypt_file()
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %44, %39
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_params(...) #1

declare dso_local i32 @crypt_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
