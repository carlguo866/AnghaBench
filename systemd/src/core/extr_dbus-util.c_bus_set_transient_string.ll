; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-util.c_bus_set_transient_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-util.c_bus_set_transient_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@UNIT_ESCAPE_SPECIFIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_set_transient_string(i32* %0, i8* %1, i8** %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @assert(i8** %16)
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @sd_bus_message_read(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %48

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @empty_to_null(i8* %30)
  %32 = call i32 @free_and_strdup(i8** %29, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %48

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @UNIT_ESCAPE_SPECIFIERS, align 4
  %41 = or i32 %39, %40
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @strempty(i8* %44)
  %46 = call i32 @unit_write_settingf(i32* %38, i32 %41, i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %37, %24
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %35, %22
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32 @free_and_strdup(i8**, i32) #1

declare dso_local i32 @empty_to_null(i8*) #1

declare dso_local i32 @unit_write_settingf(i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strempty(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
