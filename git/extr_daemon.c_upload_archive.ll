; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_upload_archive.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_upload_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.argv_array = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"upload-archive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.argv_array*)* @upload_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_archive(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  %3 = alloca %struct.child_process, align 4
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %4 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %5 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  %6 = call i32 @argv_array_push(i32* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  %8 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %9 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @argv_array_pushv(i32* %7, i32 %10)
  %12 = call i32 @run_service_command(%struct.child_process* %3)
  ret i32 %12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushv(i32*, i32) #2

declare dso_local i32 @run_service_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
