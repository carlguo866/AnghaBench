; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_falloc_args = type { i32 }
%struct.compound_hdr = type { i32 }

@OP_ALLOCATE = common dso_local global i32 0, align 4
@decode_allocate_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs42_falloc_args*, %struct.compound_hdr*)* @encode_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_allocate(%struct.xdr_stream* %0, %struct.nfs42_falloc_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs42_falloc_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs42_falloc_args* %1, %struct.nfs42_falloc_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @OP_ALLOCATE, align 4
  %9 = load i32, i32* @decode_allocate_maxsz, align 4
  %10 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %11 = call i32 @encode_op_hdr(%struct.xdr_stream* %7, i32 %8, i32 %9, %struct.compound_hdr* %10)
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = load %struct.nfs42_falloc_args*, %struct.nfs42_falloc_args** %5, align 8
  %14 = call i32 @encode_fallocate(%struct.xdr_stream* %12, %struct.nfs42_falloc_args* %13)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_fallocate(%struct.xdr_stream*, %struct.nfs42_falloc_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
