; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_temp_file_child_cleanup_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_temp_file_child_cleanup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_file_cleanup_s = type { i32 }

@temp_file_plain_cleanup_handler = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @temp_file_child_cleanup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_file_child_cleanup_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.temp_file_cleanup_s*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.temp_file_cleanup_s*
  store %struct.temp_file_cleanup_s* %5, %struct.temp_file_cleanup_s** %3, align 8
  %6 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %7 = getelementptr inbounds %struct.temp_file_cleanup_s, %struct.temp_file_cleanup_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.temp_file_cleanup_s*, %struct.temp_file_cleanup_s** %3, align 8
  %10 = load i32, i32* @temp_file_plain_cleanup_handler, align 4
  %11 = call i32 @apr_pool_cleanup_kill(i32 %8, %struct.temp_file_cleanup_s* %9, i32 %10)
  %12 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %12
}

declare dso_local i32 @apr_pool_cleanup_kill(i32, %struct.temp_file_cleanup_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
