; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_setfilter_dos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_setfilter_dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.bpf_program }
%struct.bpf_program = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.bpf_program*)* @pcap_setfilter_dos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_dos(%struct.TYPE_3__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %15

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %13 = bitcast %struct.bpf_program* %11 to i8*
  %14 = bitcast %struct.bpf_program* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
