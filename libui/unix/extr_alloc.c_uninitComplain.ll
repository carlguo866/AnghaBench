; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_alloc.c_uninitComplain.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_alloc.c_uninitComplain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%p %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @uninitComplain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninitComplain(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i8**
  store i8** %8, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %5, align 8
  store i8* %13, i8** %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @TYPE(i64 %19)
  %21 = load i32, i32* %20, align 4
  %22 = call i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17, i64 %18, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @g_free(i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  ret void
}

declare dso_local i8* @g_strdup_printf(i8*, ...) #1

declare dso_local i32* @TYPE(i64) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
