; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFS4_LOCK_STATEID_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.TYPE_4__*)* @decode_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lock_stateid(%struct.xdr_stream* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32, i32* @NFS4_LOCK_STATEID_TYPE, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @decode_stateid(%struct.xdr_stream* %8, %struct.TYPE_4__* %9)
  ret i32 %10
}

declare dso_local i32 @decode_stateid(%struct.xdr_stream*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
