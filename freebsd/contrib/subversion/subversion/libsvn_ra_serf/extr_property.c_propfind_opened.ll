; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_propfind_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_propfind_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@PROPVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@PROPSTAT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_4__*, i32*)* @propfind_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @propfind_opened(i32* %0, i8* %1, i32 %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PROPVAL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @PROPVAL, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @svn_ra_serf__xml_note(i32* %18, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @PROPVAL, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @svn_ra_serf__xml_note(i32* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %41

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PROPSTAT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @svn_ra_serf__xml_state_pool(i32* %35)
  %37 = call i32 @apr_hash_make(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i32) #1

declare dso_local i32 @apr_hash_make(i32) #1

declare dso_local i32 @svn_ra_serf__xml_state_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
