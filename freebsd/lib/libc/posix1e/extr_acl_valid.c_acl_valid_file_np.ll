; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_valid.c_acl_valid_file_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_valid.c_acl_valid_file_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_valid_file_np(i8* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %31

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @_acl_type_unold(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @_posix1e_acl(%struct.TYPE_5__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = call i32 @_posix1e_acl_sort(%struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @__acl_aclcheck_file(i8* %26, i32 %27, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @_acl_type_unold(i32) #1

declare dso_local i64 @_posix1e_acl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @_posix1e_acl_sort(%struct.TYPE_5__*) #1

declare dso_local i32 @__acl_aclcheck_file(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
