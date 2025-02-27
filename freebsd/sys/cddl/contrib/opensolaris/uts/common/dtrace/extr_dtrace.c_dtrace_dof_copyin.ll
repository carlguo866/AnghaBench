; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to copyin DOF header\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@dtrace_dof_maxsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"load size exceeds maximum\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid load size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i64, i32*)* @dtrace_dof_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @dtrace_dof_copyin(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i64 @copyin(i8* %14, %struct.TYPE_7__* %6, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @dtrace_dof_error(%struct.TYPE_7__* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EFAULT, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %67

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @dtrace_dof_maxsize, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @E2BIG, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %67

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @dtrace_dof_error(%struct.TYPE_7__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %67

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KM_SLEEP, align 4
  %43 = call %struct.TYPE_7__* @kmem_alloc(i32 %41, i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %7, align 8
  %44 = load i64, i64* %4, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @copyin(i8* %45, %struct.TYPE_7__* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %51, %39
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kmem_free(%struct.TYPE_7__* %59, i32 %61)
  %63 = load i32, i32* @EFAULT, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %3, align 8
  br label %67

67:                                               ; preds = %65, %58, %35, %26, %17
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %68
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @copyin(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_7__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
