; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_log.c_vlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_log.c_vlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @debug, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vfprintf(i32 %15, i8* %16, i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %28

21:                                               ; preds = %10
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @vfprintf(i32 %22, i8* %23, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @free(i8* %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fflush(i32 %29)
  br label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vsyslog(i32 %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @vsyslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
