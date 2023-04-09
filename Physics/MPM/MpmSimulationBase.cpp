//
// Created by wch on 2023/2/22.
//

#include "MpmSimulationBase.h"


mpm::MpmSimulatorBase::MpmSimulatorBase() {
}
mpm::MpmSimulatorBase::~MpmSimulatorBase() {
}
void mpm::MpmSimulatorBase::Init(const Vector3f &gravity, const Vector3f &worldArea, float h) {
}
void mpm::MpmSimulatorBase::AddObject(const std::vector<Vector3f> &positions, const std::vector<Vector3f> &velocities, mpm::Material *mtl, int id) {
}
void mpm::MpmSimulatorBase::AddObject(const std::vector<Vector3f> &positions, mpm::Material *mtl, int id) {
}
void mpm::MpmSimulatorBase::AddObject(const std::vector<Vector3f> &positions, mpm::Material *mtl, Vector3f transform, int id) {
}
void mpm::MpmSimulatorBase::Substep(float dt) {
}
std::vector<Vector3f> mpm::MpmSimulatorBase::GetPosition() const {
    return std::vector<Vector3f>();
}
std::vector<int> mpm::MpmSimulatorBase::GetObjID() const {
    return std::vector<int>();
}
std::vector<float> mpm::MpmSimulatorBase::GetPositionToRenderer() const {
    return std::vector<float>();
}
std::vector<float> mpm::MpmSimulatorBase::GetPositionWithIdToRenderer() const {
    return std::vector<float>();
}
void mpm::MpmSimulatorBase::ClearSimulation() {
}
void mpm::MpmSimulatorBase::Prestep() {
}
void mpm::MpmSimulatorBase::P2G() {
}
void mpm::MpmSimulatorBase::AddGravity() {
}
void mpm::MpmSimulatorBase::UpdateGridForce() {
}
void mpm::MpmSimulatorBase::UpdateGridVelocity(float dt) {
}
void mpm::MpmSimulatorBase::UpdateF(float dt) {
}
void mpm::MpmSimulatorBase::G2P() {
}
void mpm::MpmSimulatorBase::Advection(float dt) {
}
void mpm::MpmSimulatorBase::SolveGridBoundary(int thickness) {
}
