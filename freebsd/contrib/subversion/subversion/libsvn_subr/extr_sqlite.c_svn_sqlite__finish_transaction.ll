; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__finish_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__finish_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_INTERNAL_COMMIT_TRANSACTION = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__finish_transaction(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @rollback_transaction(i32* %10, i32* %11)
  %13 = call i32* @svn_error_trace(i32 %12)
  store i32* %13, i32** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @STMT_INTERNAL_COMMIT_TRANSACTION, align 4
  %17 = call i32* @get_internal_statement(i32** %6, i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @svn_sqlite__step_done(i32* %21)
  %23 = call i32* @svn_error_trace(i32 %22)
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @rollback_transaction(i32* %28, i32* %29)
  %31 = call i32* @svn_error_trace(i32 %30)
  store i32* %31, i32** %3, align 8
  br label %35

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %33, %27, %9
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @rollback_transaction(i32*, i32*) #1

declare dso_local i32* @get_internal_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
