; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_time.c_ngx_libc_localtime.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_time.c_ngx_libc_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_libc_localtime(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tm* %1, %struct.tm** %4, align 8
  %6 = call %struct.tm* @localtime(i32* %3)
  store %struct.tm* %6, %struct.tm** %5, align 8
  %7 = load %struct.tm*, %struct.tm** %4, align 8
  %8 = load %struct.tm*, %struct.tm** %5, align 8
  %9 = bitcast %struct.tm* %7 to i8*
  %10 = bitcast %struct.tm* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
