; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_spawn.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/posix_spawn/extr_h_spawn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"usage:\0A\09%s (retcode)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s exiting with status %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i8* (...) @getprogname()
  %13 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @exit(i32 255) #3
  unreachable

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strtoul(i8* %18, i8** %7, i32 10)
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* (...) @getprogname()
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
