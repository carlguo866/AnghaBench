; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_secinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_SECINFO = common dso_local global i32 0, align 4
@decode_secinfo_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.qstr*, %struct.compound_hdr*)* @encode_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_secinfo(%struct.xdr_stream* %0, %struct.qstr* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %9 = load %struct.qstr*, %struct.qstr** %5, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 8, %13
  %15 = call i32* @reserve_space(%struct.xdr_stream* %12, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @OP_SECINFO, align 4
  %17 = call i32 @cpu_to_be32(i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.qstr*, %struct.qstr** %5, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @xdr_encode_opaque(i32* %20, i32 %23, i32 %24)
  %26 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i64, i64* @decode_secinfo_maxsz, align 8
  %31 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_opaque(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
