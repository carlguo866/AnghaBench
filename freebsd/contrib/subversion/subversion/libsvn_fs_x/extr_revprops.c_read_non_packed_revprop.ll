; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_non_packed_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_non_packed_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_FS_X__RECOVERABLE_RETRY_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Revprop file for r%ld is corrupt\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32, i32*, i32*)* @read_non_packed_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_non_packed_revprop(i32** %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %47, %5
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %23, %19
  %31 = phi i1 [ false, %23 ], [ false, %19 ], [ %29, %26 ]
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @svn_pool_clear(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @svn_fs_x__path_revprops(i32* %35, i32 %36, i32* %37)
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* @SVN_FS_X__RECOVERABLE_RETRY_COUNT, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_fs_x__try_stringbuf_from_file(i32** %11, i32* %13, i32 %38, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %19

50:                                               ; preds = %30
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @verify_checksum(i32* %54, i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @apr_psprintf(i32* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @SVN_ERR_W(i32 %56, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @svn_string_create_from_buf(i32* %61, i32* %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @parse_revprop(i32** %64, i32* %65, i32 %66, i32* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %53, %50
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @svn_pool_clear(i32* %73)
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__try_stringbuf_from_file(i32**, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_revprops(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @verify_checksum(i32*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32* @svn_string_create_from_buf(i32*, i32*) #1

declare dso_local i32 @parse_revprop(i32**, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
