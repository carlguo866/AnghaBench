; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_lock.c_create_lock_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_lock.c_create_lock_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"lockinfo\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"lockscope\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"locktype\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i32*)* @create_lock_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_lock_body(i32** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @serf_bucket_aggregate_create(i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_ra_serf__add_xml_header_buckets(i32* %17, i32* %18)
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @SVN_VA_NULL, align 4
  %23 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %20, i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @SVN_VA_NULL, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %24, i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @SVN_VA_NULL, align 4
  %33 = call i32 @svn_ra_serf__add_empty_tag_buckets(i32* %30, i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %34, i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @SVN_VA_NULL, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i32*, i32*, i8*, i8*, ...) @svn_ra_serf__add_open_tag_buckets(i32* %37, i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @SVN_VA_NULL, align 4
  %46 = call i32 @svn_ra_serf__add_empty_tag_buckets(i32* %43, i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %47, i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %5
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @svn_ra_serf__add_tag_buckets(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %62, i32* %63)
  br label %65

65:                                               ; preds = %56, %5
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @svn_ra_serf__add_close_tag_buckets(i32* %66, i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %69 = load i32*, i32** %12, align 8
  %70 = load i32**, i32*** %6, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i32* @serf_bucket_aggregate_create(i32*) #1

declare dso_local i32 @svn_ra_serf__add_xml_header_buckets(i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__add_open_tag_buckets(i32*, i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_ra_serf__add_empty_tag_buckets(i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_ra_serf__add_close_tag_buckets(i32*, i32*, i8*) #1

declare dso_local i32 @svn_ra_serf__add_tag_buckets(i32*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
