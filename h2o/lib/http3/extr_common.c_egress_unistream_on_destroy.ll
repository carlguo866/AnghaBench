; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_egress_unistream_on_destroy.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_common.c_egress_unistream_on_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.st_h2o_http3_egress_unistream_t* }
%struct.st_h2o_http3_egress_unistream_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @egress_unistream_on_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egress_unistream_on_destroy(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_h2o_http3_egress_unistream_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %7, align 8
  store %struct.st_h2o_http3_egress_unistream_t* %8, %struct.st_h2o_http3_egress_unistream_t** %5, align 8
  %9 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http3_egress_unistream_t, %struct.st_h2o_http3_egress_unistream_t* %9, i32 0, i32 0
  %11 = call i32 @h2o_buffer_dispose(i32* %10)
  %12 = load %struct.st_h2o_http3_egress_unistream_t*, %struct.st_h2o_http3_egress_unistream_t** %5, align 8
  %13 = call i32 @free(%struct.st_h2o_http3_egress_unistream_t* %12)
  ret void
}

declare dso_local i32 @h2o_buffer_dispose(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_http3_egress_unistream_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
