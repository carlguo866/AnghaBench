; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"local edit\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"local add\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"local delete\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"local obstruction\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"local %s\00", align 1
@map_conflict_reason = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"incoming edit\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"incoming add\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"incoming delete\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"incoming %s\00", align 1
@map_conflict_action = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"%s, %s %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_prop_get_description(i8** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @svn_client_conflict_get_local_change(i32* %11)
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 131, label %15
    i32 130, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %4
  %14 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  br label %31

15:                                               ; preds = %4
  %16 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  br label %31

17:                                               ; preds = %4
  %18 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  br label %31

19:                                               ; preds = %4
  %20 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i8* %20, i8** %9, align 8
  br label %31

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @map_conflict_reason, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @svn_client_conflict_get_local_change(i32* %25)
  %27 = call i32 @svn_token__to_word(i32 %24, i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %22, i8* %23, i8* %29)
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %21, %19, %17, %15, %13
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @svn_client_conflict_get_incoming_change(i32* %32)
  switch i32 %33, label %40 [
    i32 132, label %34
    i32 134, label %36
    i32 133, label %38
  ]

34:                                               ; preds = %31
  %35 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %35, i8** %10, align 8
  br label %50

36:                                               ; preds = %31
  %37 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  br label %50

38:                                               ; preds = %31
  %39 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %39, i8** %10, align 8
  br label %50

40:                                               ; preds = %31
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %43 = load i32, i32* @map_conflict_action, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @svn_client_conflict_get_incoming_change(i32* %44)
  %46 = call i32 @svn_token__to_word(i32 %43, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %41, i8* %42, i8* %48)
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %40, %38, %36, %34
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @SVN_ERR_ASSERT(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @svn_client_conflict_get_operation(i32* %64)
  %66 = call i32 @operation_str(i32 %65)
  %67 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %60, i8* %61, i8* %62, i8* %63, i32 %66)
  %68 = load i8**, i8*** %5, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local i32 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_token__to_word(i32, i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @operation_str(i32) #1

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
