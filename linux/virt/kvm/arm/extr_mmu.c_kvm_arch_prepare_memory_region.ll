; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_arch_prepare_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_mmu.c_kvm_arch_prepare_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32, i32, i32 }
%struct.kvm_userspace_memory_region = type { i64, i64, i32, i64 }
%struct.vm_area_struct = type { i64, i32, i64, i32 }

@KVM_MEM_READONLY = common dso_local global i32 0, align 4
@KVM_MR_CREATE = common dso_local global i32 0, align 4
@KVM_MR_MOVE = common dso_local global i32 0, align 4
@KVM_MR_FLAGS_ONLY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@KVM_MEM_LOG_DIRTY_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_prepare_memory_region(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_userspace_memory_region* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca %struct.kvm_userspace_memory_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %7, align 8
  store %struct.kvm_userspace_memory_region* %2, %struct.kvm_userspace_memory_region** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %20 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %24 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %28 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KVM_MEM_READONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @KVM_MR_CREATE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @KVM_MR_MOVE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @KVM_MR_FLAGS_ONLY, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %202

47:                                               ; preds = %42, %38, %4
  %48 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load %struct.kvm*, %struct.kvm** %6, align 8
  %56 = call i32 @kvm_phys_size(%struct.kvm* %55)
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %202

63:                                               ; preds = %47
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @down_read(i32* %67)
  br label %69

69:                                               ; preds = %163, %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %72, i64 %73)
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %14, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %76 = icmp ne %struct.vm_area_struct* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %69
  br label %167

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VM_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %13, align 4
  br label %167

97:                                               ; preds = %87, %84
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @max(i64 %98, i64 %101)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @min(i64 %103, i32 %106)
  store i64 %107, i64* %16, align 8
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VM_PFNMAP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %97
  %115 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %116 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %120 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = add nsw i64 %117, %122
  store i64 %123, i64* %17, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @PAGE_SHIFT, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %18, align 4
  %130 = load i64, i64* %15, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %18, align 4
  %139 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %140 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @KVM_MEM_LOG_DIRTY_PAGES, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %114
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %13, align 4
  br label %195

148:                                              ; preds = %114
  %149 = load %struct.kvm*, %struct.kvm** %6, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @kvm_phys_addr_ioremap(%struct.kvm* %149, i64 %150, i32 %151, i64 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %167

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %97
  %162 = load i64, i64* %16, align 8
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %161
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %11, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %69, label %167

167:                                              ; preds = %163, %159, %94, %83
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @KVM_MR_FLAGS_ONLY, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %195

172:                                              ; preds = %167
  %173 = load %struct.kvm*, %struct.kvm** %6, align 8
  %174 = getelementptr inbounds %struct.kvm, %struct.kvm* %173, i32 0, i32 0
  %175 = call i32 @spin_lock(i32* %174)
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load %struct.kvm*, %struct.kvm** %6, align 8
  %180 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %181 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %184 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @unmap_stage2_range(%struct.kvm* %179, i64 %182, i64 %185)
  br label %191

187:                                              ; preds = %172
  %188 = load %struct.kvm*, %struct.kvm** %6, align 8
  %189 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %190 = call i32 @stage2_flush_memslot(%struct.kvm* %188, %struct.kvm_memory_slot* %189)
  br label %191

191:                                              ; preds = %187, %178
  %192 = load %struct.kvm*, %struct.kvm** %6, align 8
  %193 = getelementptr inbounds %struct.kvm, %struct.kvm* %192, i32 0, i32 0
  %194 = call i32 @spin_unlock(i32* %193)
  br label %195

195:                                              ; preds = %191, %171, %145
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = call i32 @up_read(i32* %199)
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %195, %60, %46
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @kvm_phys_size(%struct.kvm*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @kvm_phys_addr_ioremap(%struct.kvm*, i64, i32, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @unmap_stage2_range(%struct.kvm*, i64, i64) #1

declare dso_local i32 @stage2_flush_memslot(%struct.kvm*, %struct.kvm_memory_slot*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
