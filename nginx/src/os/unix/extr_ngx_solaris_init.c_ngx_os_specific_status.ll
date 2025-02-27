; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_solaris_init.c_ngx_os_specific_status.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_solaris_init.c_ngx_os_specific_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"OS: %s %s\00", align 1
@ngx_solaris_sysname = common dso_local global i32 0, align 4
@ngx_solaris_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"version: %s\00", align 1
@ngx_solaris_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_os_specific_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @ngx_solaris_sysname, align 4
  %6 = load i32, i32* @ngx_solaris_release, align 4
  %7 = call i32 (i32, i32*, i32, i8*, i32, ...) @ngx_log_error(i32 %3, i32* %4, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ngx_solaris_version, align 4
  %11 = call i32 (i32, i32*, i32, i8*, i32, ...) @ngx_log_error(i32 %8, i32* %9, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
