; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_stickyfile.c_priv_vfs_stickyfile_dir_fother.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_stickyfile.c_priv_vfs_stickyfile_dir_fother.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@dpath = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"priv_vfs_stickyfile_dir_fother(root, jail)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"priv_vfs_stickyfile_dir_fother(root, !jail)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"priv_vfs_stickyfile_dir_fother(!root, jail)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"priv_vfs_stickyfile_dir_fother(!root, !jail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_stickyfile_dir_fother(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %8 = load i32, i32* @dpath, align 4
  %9 = load i32, i32* @S_ISTXT, align 4
  %10 = or i32 448, %9
  %11 = call i32 @chmod(i32 %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @expect(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18, i32 0, i32 0)
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @expect(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %26, %23, %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EPERM, align 4
  %38 = call i32 @expect(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 -1, i32 %37)
  br label %39

39:                                               ; preds = %35, %32, %29
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EPERM, align 4
  %48 = call i32 @expect(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 -1, i32 %47)
  br label %49

49:                                               ; preds = %45, %42, %39
  ret void
}

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @expect(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
