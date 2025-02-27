; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_create_session_rsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_create_session_rsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_op = type { i32 }

@op_encode_hdr_size = common dso_local global i32 0, align 4
@NFS4_MAX_SESSIONID_LEN = common dso_local global i32 0, align 4
@op_encode_channel_attrs_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_op*)* @nfsd4_create_session_rsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_create_session_rsize(%struct.svc_rqst* %0, %struct.nfsd4_op* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd4_op*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.nfsd4_op* %1, %struct.nfsd4_op** %4, align 8
  %5 = load i32, i32* @op_encode_hdr_size, align 4
  %6 = load i32, i32* @NFS4_MAX_SESSIONID_LEN, align 4
  %7 = call i32 @XDR_QUADLEN(i32 %6)
  %8 = add nsw i32 %5, %7
  %9 = add nsw i32 %8, 2
  %10 = load i32, i32* @op_encode_channel_attrs_maxsz, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @op_encode_channel_attrs_maxsz, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
