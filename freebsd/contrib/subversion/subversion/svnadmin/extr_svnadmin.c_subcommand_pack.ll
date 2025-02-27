; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i32 }

@stdout = common dso_local global i32 0, align 4
@repos_notify_handler = common dso_local global i32* null, align 8
@check_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_pack(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svnadmin_opt_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %11, %struct.svnadmin_opt_state** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @parse_args(i32* null, i32* %12, i32 0, i32 0, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %17 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @open_repos(i32** %8, i32 %18, %struct.svnadmin_opt_state* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %24 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @stdout, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @recode_stream_create(i32 %28, i32* %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %34 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32*, i32** @repos_notify_handler, align 8
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32* [ %38, %37 ], [ null, %39 ]
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @check_cancel, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @svn_repos_fs_pack2(i32* %32, i32* %41, i32* %42, i32 %43, i32* null, i32* %44)
  %46 = call i32* @svn_error_trace(i32 %45)
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32* @recode_stream_create(i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_repos_fs_pack2(i32*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
