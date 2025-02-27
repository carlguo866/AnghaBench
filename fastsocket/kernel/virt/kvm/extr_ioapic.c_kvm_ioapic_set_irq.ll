; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i64, i32, %union.kvm_ioapic_redirect_entry*, i32* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@IOAPIC_EDGE_TRIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ioapic_set_irq(%struct.kvm_ioapic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_ioapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.kvm_ioapic_redirect_entry, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %18 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %104

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %26
  %31 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__kvm_irq_line_state(i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %40, i32 0, i32 2
  %42 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %42, i64 %44
  %46 = bitcast %union.kvm_ioapic_redirect_entry* %11 to i8*
  %47 = bitcast %union.kvm_ioapic_redirect_entry* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = bitcast %union.kvm_ioapic_redirect_entry* %11 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %30
  %56 = load i64, i64* %10, align 8
  %57 = xor i64 %56, -1
  %58 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %96

62:                                               ; preds = %30
  %63 = bitcast %union.kvm_ioapic_redirect_entry* %11 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IOAPIC_EDGE_TRIG, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %62
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %76, %62
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = bitcast %union.kvm_ioapic_redirect_entry* %11 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85, %76
  %91 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ioapic_service(%struct.kvm_ioapic* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %95

94:                                               ; preds = %85, %82
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %90
  br label %96

96:                                               ; preds = %95, %55
  %97 = bitcast %union.kvm_ioapic_redirect_entry* %11 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @trace_kvm_ioapic_set_irq(i32 %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %96, %26, %4
  %105 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %106 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %105, i32 0, i32 1
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__kvm_irq_line_state(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32) #1

declare dso_local i32 @trace_kvm_ioapic_set_irq(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
