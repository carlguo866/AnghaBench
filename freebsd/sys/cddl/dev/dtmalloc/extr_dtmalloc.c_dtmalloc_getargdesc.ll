; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtmalloc/extr_dtmalloc.c_dtmalloc_getargdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtmalloc/extr_dtmalloc.c_dtmalloc_getargdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"struct malloc_type *\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"struct malloc_type_internal *\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"struct malloc_type_stats *\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@DTRACE_ARGNONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.TYPE_3__*)* @dtmalloc_getargdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtmalloc_getargdesc(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
  ]

13:                                               ; preds = %4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %22

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %22

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %22

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %22

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @DTRACE_ARGNONE, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %17, %16, %15, %14, %13
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
