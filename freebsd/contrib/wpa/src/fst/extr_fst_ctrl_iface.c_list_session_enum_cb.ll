; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_list_session_enum_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_list_session_enum_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_group = type { i32 }
%struct.fst_session = type { i32 }
%struct.list_sessions_cb_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_group*, %struct.fst_session*, i8*)* @list_session_enum_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_session_enum_cb(%struct.fst_group* %0, %struct.fst_session* %1, i8* %2) #0 {
  %4 = alloca %struct.fst_group*, align 8
  %5 = alloca %struct.fst_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_sessions_cb_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.fst_group* %0, %struct.fst_group** %4, align 8
  store %struct.fst_session* %1, %struct.fst_session** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.list_sessions_cb_ctx*
  store %struct.list_sessions_cb_ctx* %10, %struct.list_sessions_cb_ctx** %7, align 8
  %11 = load %struct.list_sessions_cb_ctx*, %struct.list_sessions_cb_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.list_sessions_cb_ctx, %struct.list_sessions_cb_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.list_sessions_cb_ctx*, %struct.list_sessions_cb_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.list_sessions_cb_ctx, %struct.list_sessions_cb_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fst_session*, %struct.fst_session** %5, align 8
  %18 = call i32 @fst_session_get_id(%struct.fst_session* %17)
  %19 = call i32 @os_snprintf(i32 %13, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.list_sessions_cb_ctx*, %struct.list_sessions_cb_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.list_sessions_cb_ctx, %struct.list_sessions_cb_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.list_sessions_cb_ctx*, %struct.list_sessions_cb_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.list_sessions_cb_ctx, %struct.list_sessions_cb_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.list_sessions_cb_ctx*, %struct.list_sessions_cb_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.list_sessions_cb_ctx, %struct.list_sessions_cb_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i32 @os_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @fst_session_get_id(%struct.fst_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
